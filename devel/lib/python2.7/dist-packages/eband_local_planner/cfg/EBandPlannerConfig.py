## *********************************************************
## 
## File autogenerated for the eband_local_planner package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 235, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 280, 'description': 'Distance tolerance for reaching the goal pose', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'xy_goal_tolerance', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Orientation tolerance for reaching the desired goal pose', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'yaw_goal_tolerance', 'edit_method': '', 'default': 0.05, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Angular velocity lower bound that determines if the robot should stop to avoid limit-cycles or locks', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rot_stopped_vel', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Linear velocity lower bound that determines if the robot should stop to avoid limit-cycles or locks', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trans_stopped_vel', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Lifetime of eband visualization markers', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'marker_lifetime', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Min distance that denotes connectivity between consecutive bubbles', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_min_relative_overlap', 'edit_method': '', 'default': 0.7, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Bubble geometric bound regarding tiny bubble distance', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_tiny_bubble_distance', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Bubble geometric bound regarding tiny bubble expansion', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_tiny_bubble_expansion', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Force gain of forces between consecutive bubbles that tend to stretch the elastic band', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_internal_force_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Force gain of forces that tend to move the bubbles away from obstacles', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_external_force_gain', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Number of iterations for eband optimization', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'num_iterations_eband_optimization', 'edit_method': '', 'default': 3, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Number of iterations for reaching the equilibrium between internal and external forces', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_equilibrium_approx_max_recursion_depth', 'edit_method': '', 'default': 4, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 280, 'description': 'Maximum relative equlibrium overshoot', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_equilibrium_relative_overshoot', 'edit_method': '', 'default': 0.75, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum magnitude of force that is considered significant and used in the calculations', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'eband_significant_force_lower_bound', 'edit_method': '', 'default': 0.15, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Costmap weight factor used in the calculation of distance to obstacles', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'costmap_weight', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum linear velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_lin', 'edit_method': '', 'default': 0.75, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum angular velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_vel_th', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum linear velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_vel_lin', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum angular velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_vel_th', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum in-place angular velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_in_place_vel_th', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Minimum in place linear velocity', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'in_place_trans_vel', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Proportional gain of the PID controller', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'k_prop', 'edit_method': '', 'default': 4.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Damping gain of the PID controller', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'k_damp', 'edit_method': '', 'default': 3.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Control rate', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'Ctrl_Rate', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum allowable acceleration', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_acceleration', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Virtual mass', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'virtual_mass', 'edit_method': '', 'default': 0.75, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum linear acceleration', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_translational_acceleration', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Maximum angular acceleration', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_rotational_acceleration', 'edit_method': '', 'default': 1.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Rotation correction threshold', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rotation_correction_threshold', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Denotes whether to use the differential drive hack', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'differential_drive', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Multiplier of bubble radius', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'bubble_velocity_multiplier', 'edit_method': '', 'default': 2.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Multiplier of rotation threshold', 'max': 'std::numeric_limits<double>::infinity()', 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rotation_threshold_multiplier', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Determines whether to try getting closer to the goal, in case of going past the tolerance', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'disallow_hysteresis', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}], 'type': '', 'id': 0}

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

