VERSION >= v"0.4.0-dev+6521" && __precompile__()

module Lumberjack

if VERSION >= v"0.5.0-rc3+0"
      import Base.StackTraces
else 
      import StackTraces
end

import Base.show, Base.log

# To avoid warnings, intentionally do not import:
# Base.error, Base.warn, Base.info

export log,
       debug, info, warn, error,
       add_saw, remove_saw, remove_saws,
       add_truck, remove_truck, remove_trucks,
       configure,

       TimberTruck,
       LumberjackTruck,
       CommonLogTruck,
       JsonTruck,
       Saw,
       FileRoller,
       Syslog

# -------

include("saws.jl")
include("timbertruck.jl")
include("lumbermill.jl")
include("FileRoller.jl")
include("Syslog.jl")

# -------

function __init__()
    global const _lumber_mill = LumberMill()
end

# -------

end
