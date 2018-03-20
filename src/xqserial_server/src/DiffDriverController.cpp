#include "DiffDriverController.h"
#include <time.h>
#define R   0.1015     //轮子半径
#define L1_L2   0.595  //L1 + L2

namespace xqserial_server
{


DiffDriverController::DiffDriverController()
{
    cmd_topic="cmd_vel";
    xq_status=new StatusPublisher();
    cmd_serial=NULL;
}

DiffDriverController::DiffDriverController(std::string cmd_topic_,StatusPublisher* xq_status_,CallbackAsyncSerial* cmd_serial_)
{
    cmd_topic=cmd_topic_;
    cmd_serial=cmd_serial_;
}

void DiffDriverController::run()
{
    ros::NodeHandle nodeHandler;
    ros::Subscriber sub = nodeHandler.subscribe(cmd_topic, 1, &DiffDriverController::sendcmd, this);
    ros::Subscriber sub1 = nodeHandler.subscribe("/barDetectFlag", 1, &DiffDriverController::updateBarDetectFlag,this);
    ros::spin();
}

void DiffDriverController::updateBarDetectFlag(const std_msgs::Bool& DetectFlag)
{
  if(DetectFlag.data)
  {
    //下发底层红外开启命令
    byte cmd_str[2]={0x04,0xaa};
    if(NULL!=cmd_serial)
    {
        cmd_serial->write(cmd_str,2);
    }
  }
  else
  {
    //下发底层红外禁用命令
    byte cmd_str[2]={0x04,0x55};
    if(NULL!=cmd_serial)
    {
        cmd_serial->write(cmd_str,2);
    }
  }
}
void DiffDriverController::sendcmd(const geometry_msgs::Twist &command)
{
    byte cmd_str[14]= { 0x02, 0x41, 0x00, 0x00, 0x42, 0x00, 0x00, 0x43, 0x00, 0x00, 0x44, 0x00, 0x00, 0x03 };
    set_velocity(command.linear.x, command.linear.y, command.angular.z, cmd_str);
    boost::mutex::scoped_lock lock(mMutex);
    cmd_serial->write(cmd_str,14);

   // command.linear.x
}

void DiffDriverController::set_velocity(double vx, double vy, double w, byte* info)
{
  double w1, w2, w3, w4;
  int RPM1, RPM2, RPM3, RPM4;
  w1 = ( vx - vy - w*L1_L2 ) / R;
  w2 = ( vx + vy + w*L1_L2 ) / R;
  w3 = ( vx + vy - w*L1_L2 ) / R;
  w4 = ( vx - vy + w*L1_L2 ) / R;

  RPM1 = w1 * 4500 /PI;
  RPM2 = w2 * 4500 /PI;     //RPM*3     发送数据为RPM*3
  RPM3 = w3 * 4500 /PI;
  RPM4 = w4 * 4500 /PI;

  if( RPM1 > 4400 || RPM2 > 4400 || RPM3 > 4400 || RPM4 > 4400 || RPM1 < -4400 || RPM2 < -4400 || RPM3 < -4400 || RPM4 < -4400)  // 电机最大转速为4400
  {
    int MAX_RPM;
    MAX_RPM = (abs(RPM1) > abs(RPM2)) ? abs(RPM1) : abs(RPM2);
    MAX_RPM = (MAX_RPM > abs(RPM3)) ? MAX_RPM : abs(RPM3);
    MAX_RPM = (MAX_RPM > abs(RPM4)) ? MAX_RPM : abs(RPM4);

    RPM1 = RPM1/MAX_RPM * 4400;
    RPM2 = RPM2/MAX_RPM * 4400;
    RPM3 = RPM3/MAX_RPM * 4400;
    RPM4 = RPM4/MAX_RPM * 4400;

   }

    info[3] = RPM1 >> 8;
    info[2] = RPM1;
    info[6] = RPM2 >> 8;
    info[5] = RPM2;
    info[9] = RPM3 >> 8;
    info[8] = RPM3;
    info[12] = RPM4 >> 8;
    info[11] = RPM4;
}


}
