# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Predefined success codes:
uint8 SUCCESS        = 0

# Predefined general error codes:
uint8 FAILURE        = 10
uint8 CANCELED       = 11
uint8 PAT_EXCEEDED   = 12
uint8 COLLISION      = 13
uint8 OSCILLATION    = 14
uint8 ROBOT_STUCK    = 15
uint8 START_BLOCKED  = 16
uint8 GOAL_BLOCKED   = 17
uint8 TF_ERROR       = 18
uint8 INVALID_PLUGIN = 19
uint8 INTERNAL_ERROR = 20
# 21..49 are reserved for future general error codes

# Planning/controlling failures:
uint8 PLAN_FAILURE   = 50
# 51..99 are reserved as global planner specific errors

uint8 CTRL_FAILURE   = 100
# 101..149 are reserved as local planner specific errors

uint32 outcome
string message

# Configuration upon action completion
float32 dist_to_goal
float32 angle_to_goal
geometry_msgs/PoseStamped final_pose

