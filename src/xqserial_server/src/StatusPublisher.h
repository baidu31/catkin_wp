#ifndef STATUSPUBLISHER_H
#define STATUSPUBLISHER_H

#include "ros/ros.h"
#include <boost/thread.hpp>
#include <boost/assign/list_of.hpp>
#include <algorithm>
#include "geometry_msgs/Pose2D.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Vector3.h"
#include "nav_msgs/Odometry.h"
#include "std_msgs/Int32.h"
#include "std_msgs/Float64.h"
#include "tf/transform_broadcaster.h"
#include <sensor_msgs/point_cloud2_iterator.h>
#include <sensor_msgs/PointField.h>

#define byte unsigned char
#define PI 3.14159265
#define data_num 16    //stm32 发送上来的数据字节数


namespace xqserial_server
{
typedef struct {
    double w1;
    double w2;
    double w3;
    double w4;
    double vx;
    double vy;
    double w;
    double x;
    double y;
    double theta;
}UPLOAD_STATUS;

class StatusPublisher
{

public:
    StatusPublisher();

    void Refresh();
    void Update(const byte *data, unsigned int len);
    UPLOAD_STATUS get_robot_state(UPLOAD_STATUS last_state, double delta_t);

    

private:
    UPLOAD_STATUS car_status;
    byte read_data[data_num];
    int current_getNum;        //当前数据读取位

    nav_msgs::Odometry CarOdom;// 小车位置和速度信息
    ros::NodeHandle mNH;

    ros::Publisher mOdomPub;
    
    ros::Time current_time;
    ros::Time last_time;

    bool mbUpdated;

    boost::mutex mMutex;
};

} //namespace xqserial_server


#endif // STATUSPUBLISHER_H
