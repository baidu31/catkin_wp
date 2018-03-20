#ifndef DIFFDRIVERCONTROLLER_H
#define DIFFDRIVERCONTROLLER_H
#include <ros/ros.h>
#include "StatusPublisher.h"
#include "AsyncSerial.h"
#include <std_msgs/Bool.h>
#define byte unsigned char

namespace xqserial_server
{

class DiffDriverController
{
public:
    DiffDriverController();
    DiffDriverController(std::string cmd_topic_,StatusPublisher* xq_status_,CallbackAsyncSerial* cmd_serial_);
    void run();
    void sendcmd(const geometry_msgs::Twist& command);


    void updateBarDetectFlag(const std_msgs::Bool& DetectFlag);

    void set_velocity(double vx, double vy, double w, byte* info);


private:

    std::string cmd_topic;
    StatusPublisher* xq_status;
    CallbackAsyncSerial* cmd_serial;
    boost::mutex mMutex;

};

}
#endif // DIFFDRIVERCONTROLLER_H
