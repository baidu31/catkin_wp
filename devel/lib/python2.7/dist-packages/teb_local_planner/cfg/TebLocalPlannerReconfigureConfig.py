## *********************************************************
## 
## File autogenerated for the teb_local_planner package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 235, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 280, 'description': 'Enable the automatic resizing of the trajectory during optimization (based on the temporal resolution of the trajectory, recommended)', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'teb_autosize', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Temporal resolution of the planned trajectory (usually it is set to the magnitude of the 1/control_rate)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dt_ref', 'edit_method': '', 'default': 0.3, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Hysteresis that is utilized for automatic resizing depending on the current temporal resolution (dt): usually 10% of dt_ref', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dt_hysteresis', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.002, 'type': 'double'}, {'srcline': 280, 'description': 'Some global planners are not considering the orientation at local subgoals between start and global goal, therefore determine it automatically', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'global_plan_overwrite_orientation', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'If true, the underlying trajectories might be initialized with backwards motions in case the goal is behind the start within the local costmap (this is only recommended if the robot is equipped with rear sensors)', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'allow_init_with_backwards_motion', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Specify maximum length (cumulative Euclidean distances) of the subset of the global plan taken into account for optimization [if 0 or negative: disabled; the length is also bounded by the local costmap size]', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_global_plan_lookahead_dist', 'edit_method': '', 'default': 3.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Force the planner to reinitialize the trajectory if a previous goal is updated with a seperation of more than the specified value in meters (skip hot-starting)', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'force_reinit_new_goal_dist', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Specify up to which pose on the predicted plan the feasibility should be checked each sampling interval', 'max': 50, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'feasibility_check_no_poses', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Min. separation between each two consecutive via-points extracted from the global plan [if negative: disabled]', 'max': 5.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'global_plan_viapoint_sep', 'edit_method': '', 'default': -0.1, 'level': 0, 'min': -0.1, 'type': 'double'}, {'srcline': 280, 'description': 'If true, the planner adheres to the order of via-points in the storage container', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'via_points_ordered', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'If true, the planner uses the exact arc length in velocity, acceleration and turning rate computations [-> increased cpu time], otherwise the euclidean approximation is used.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'exact_arc_length', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Publish planner feedback containing the full trajectory and a list of active obstacles (should be enabled only for evaluation or debugging purposes)', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publish_feedback', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Maximum translational velocity of the robot', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_x', 'edit_method': '', 'default': 0.4, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum translational velocity of the robot for driving backwards', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_x_backwards', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum strafing velocity of the robot (should be zero for non-holonomic robots!)', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_y', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum angular velocity of the robot', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_theta', 'edit_method': '', 'default': 0.3, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum translational acceleration of the robot', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'acc_lim_x', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum strafing acceleration of the robot', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'acc_lim_y', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum angular acceleration of the robot', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'acc_lim_theta', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum turning radius of a carlike robot (diff-drive robot: zero)', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_turning_radius', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': "The distance between the drive shaft and steering axle (only required for a carlike robot with 'cmd_angle_instead_rotvel' enabled); The value might be negative for back-wheeled robots!", 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheelbase', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': -10.0, 'type': 'double'}, {'srcline': 280, 'description': "Substitute the rotational velocity in the commanded velocity message by the corresponding steering angle (check 'axles_distance')", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'cmd_angle_instead_rotvel', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'If true, updated the footprint before checking trajectory feasibility', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'is_footprint_dynamic', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Allowed final euclidean distance to the goal position', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'xy_goal_tolerance', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': 0.001, 'type': 'double'}, {'srcline': 280, 'description': 'Allowed final orientation error to the goal orientation', 'max': 3.2, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'yaw_goal_tolerance', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.001, 'type': 'double'}, {'srcline': 280, 'description': "Allow the robot's velocity to be nonzero for planning purposes (the robot can arrive at the goal with max speed)", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'free_goal_vel', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Minimum desired separation from obstacles', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_obstacle_dist', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Buffer zone around obstacles with non-zero penalty costs (should be larger than min_obstacle_dist in order to take effect)', 'max': 15.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'inflation_dist', 'edit_method': '', 'default': 0.6, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Specify whether the obstacles in the costmap should be taken into account directly (this is necessary if no seperate clustering and detection is implemented)', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'include_costmap_obstacles', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': "If true, the old association strategy is used (for each obstacle, find the nearest TEB pose), otherwise the new one (for each teb pose, find only 'relevant' obstacles).", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'legacy_obstacle_association', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'The non-legacy obstacle association technique tries to connect only relevant obstacles with the discretized trajectory during optimization, all obstacles within a specifed distance are forced to be included (as a multiple of min_obstacle_dist), e.g. choose 2.0 in order to consider obstacles within a radius of 2.0*min_obstacle_dist.', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'obstacle_association_force_inclusion_factor', 'edit_method': '', 'default': 1.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'See obstacle_association_force_inclusion_factor, but beyond a multiple of [value]*min_obstacle_dist all obstacles are ignored during optimization. obstacle_association_force_inclusion_factor is processed first.', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'obstacle_association_cutoff_factor', 'edit_method': '', 'default': 5.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 280, 'description': 'Limit the occupied local costmap obstacles taken into account for planning behind the robot (specify distance in meters)', 'max': 20.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'costmap_obstacles_behind_robot_dist', 'edit_method': '', 'default': 1.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'The obstacle position is attached to the closest pose on the trajectory to reduce computational effort, but take a number of neighbors into account as well', 'max': 200, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'obstacle_poses_affected', 'edit_method': '', 'default': 30, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Number of solver iterations called in each outerloop iteration', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'no_inner_iterations', 'edit_method': '', 'default': 5, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Each outerloop iteration automatically resizes the trajectory and invokes the internal optimizer with no_inner_iterations', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'no_outer_iterations', 'edit_method': '', 'default': 4, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Activate the optimization', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'optimization_activate', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Print verbose information', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'optimization_verbose', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Add a small safty margin to penalty functions for hard-constraint approximations', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'penalty_epsilon', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed translational velocity', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_max_vel_x', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed strafing velocity (in use only for holonomic robots)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_max_vel_y', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed angular velocity', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_max_vel_theta', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed translational acceleration', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_acc_lim_x', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed strafing acceleration (in use only for holonomic robots)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_acc_lim_y', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the maximum allowed angular acceleration', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_acc_lim_theta', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying the non-holonomic kinematics', 'max': 10000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_kinematics_nh', 'edit_method': '', 'default': 1000.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for forcing the robot to choose only forward directions (positive transl. velocities, only diffdrive robot)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_kinematics_forward_drive', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for enforcing a minimum turning radius (carlike robots)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_kinematics_turning_radius', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for contracting the trajectory w.r.t transition time', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_optimaltime', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying a minimum seperation from obstacles', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_obstacle', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for the inflation penalty (should be small)', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_inflation', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for satisfying a minimum seperation from dynamic obstacles', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_dynamic_obstacle', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Optimization weight for minimizing the distance to via-points', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_viapoint', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': "Some special weights (currently 'weight_obstacle') are repeatedly scaled by this factor in each outer TEB iteration (weight_new: weight_old * factor); Increasing weights iteratively instead of setting a huge value a-priori leads to better numerical conditions of the underlying optimization problem.", 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'weight_adapt_factor', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 280, 'description': 'Activate multiple threading for planning multiple trajectories in parallel', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enable_multithreading', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'If true, the homotopies are explored usign a simple left-right approach (pass each obstacle on the left or right side) for path generation, otherwise sample possible roadmaps randomly in a specified region between start and goal', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'simple_exploration', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Specify the maximum number of allowed alternative homotopy classes (limits computational effort)', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_number_classes', 'edit_method': '', 'default': 5, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Specify how much trajectory cost must a new candidate have w.r.t. a previously selected trajectory in order to be selected (selection if new_cost < old_cost*factor)', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'selection_cost_hysteresis', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Specify a cost reduction in the interval (0,1) for the trajectory in the equivalence class of the initial plan.)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'selection_prefer_initial_plan', 'edit_method': '', 'default': 0.95, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': "Extra scaling of obstacle cost terms just for selecting the 'best' candidate (new_obst_cost: obst_cost*factor)", 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'selection_obst_cost_scale', 'edit_method': '', 'default': 100.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': "Extra scaling of via-point cost terms just for selecting the 'best' candidate. (new_viapt_cost: viapt_cost*factor)", 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'selection_viapoint_cost_scale', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'If true, time cost is replaced by the total transition time.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'selection_alternative_time_cost', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Specify the number of samples generated for creating the roadmap graph, if simple_exploration is turend off', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roadmap_graph_no_samples', 'edit_method': '', 'default': 15, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Specify the width of the area in which sampled will be generated between start and goal [m] (the height equals the start-goal distance)', 'max': 20.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roadmap_graph_area_width', 'edit_method': '', 'default': 5.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 280, 'description': 'The length of the rectangular region is determined by the distance between start and goal. This parameter further scales the distance such that the geometric center remains equal!)', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roadmap_graph_area_length_scale', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.5, 'type': 'double'}, {'srcline': 280, 'description': 'Scale number of obstacle value in order to allow huge number of obstacles. Do not choose it extremly low, otherwise obstacles cannot be distinguished from each other (0.2<H<=1)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'h_signature_prescaler', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.2, 'type': 'double'}, {'srcline': 280, 'description': 'Two h-signuteres are assumed to be equal, if both the difference of real parts and complex parts are below the specified threshold', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'h_signature_threshold', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'If simple_exploration is turned on, this parameter determines the distance on the left and right side of the obstacle at which a new keypoint will be cretead (in addition to min_obstacle_dist)', 'max': 5.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'obstacle_keypoint_offset', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Specify the value of the normalized scalar product between obstacle heading and goal heading in order to take them (obstacles) into account for exploration)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'obstacle_heading_threshold', 'edit_method': '', 'default': 0.45, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'If true, all trajectories of different topologies are attached to the set of via-points, otherwise only the trajectory sharing the same one as the initial/global plan is attached (no effect in test_optim_node).', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'viapoints_all_candidates', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Visualize the graph that is created for exploring new homotopy classes', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'visualize_hc_graph', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Allows the planner to shrink the horizon temporary (50%) in case of automatically detected issues.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'shrink_horizon_backup', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Try to detect and resolve oscillations between multiple solutions in the same equivalence class (robot frequently switches between left/right/forward/backwards).', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'oscillation_recovery', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

