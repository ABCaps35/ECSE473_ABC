;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::LoadExternalMap)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'LoadExternalMap (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::LOADEXTERNALMAP")
  (make-package "STDR_MSGS::LOADEXTERNALMAP"))
(unless (find-package "STDR_MSGS::LOADEXTERNALMAPREQUEST")
  (make-package "STDR_MSGS::LOADEXTERNALMAPREQUEST"))
(unless (find-package "STDR_MSGS::LOADEXTERNALMAPRESPONSE")
  (make-package "STDR_MSGS::LOADEXTERNALMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass stdr_msgs::LoadExternalMapRequest
  :super ros::object
  :slots (_map ))

(defmethod stdr_msgs::LoadExternalMapRequest
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass stdr_msgs::LoadExternalMapResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::LoadExternalMapResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass stdr_msgs::LoadExternalMap
  :super ros::object
  :slots ())

(setf (get stdr_msgs::LoadExternalMap :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get stdr_msgs::LoadExternalMap :datatype-) "stdr_msgs/LoadExternalMap")
(setf (get stdr_msgs::LoadExternalMap :request) stdr_msgs::LoadExternalMapRequest)
(setf (get stdr_msgs::LoadExternalMap :response) stdr_msgs::LoadExternalMapResponse)

(defmethod stdr_msgs::LoadExternalMapRequest
  (:response () (instance stdr_msgs::LoadExternalMapResponse :init)))

(setf (get stdr_msgs::LoadExternalMapRequest :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get stdr_msgs::LoadExternalMapRequest :datatype-) "stdr_msgs/LoadExternalMapRequest")
(setf (get stdr_msgs::LoadExternalMapRequest :definition-)
      "nav_msgs/OccupancyGrid  map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")

(setf (get stdr_msgs::LoadExternalMapResponse :md5sum-) "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(setf (get stdr_msgs::LoadExternalMapResponse :datatype-) "stdr_msgs/LoadExternalMapResponse")
(setf (get stdr_msgs::LoadExternalMapResponse :definition-)
      "nav_msgs/OccupancyGrid  map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")



(provide :stdr_msgs/LoadExternalMap "6cdd0a18e0aff5b0a3ca2326a89b54ff")


