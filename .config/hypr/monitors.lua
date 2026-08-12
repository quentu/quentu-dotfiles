--##############
--## MONITORS ##
--##############

-- See https://wiki.hypr.land/Configuring/Monitors/

--monitor=,preferred,auto,1.0,

hl.monitor({
    output   = "DP-3",
    mode     = "2560x1440@165",
    position = "1080x0",
    scale    = 1.0,
})

--for mini

--monitor=DP-3,2560x1440@165,1920x0,1.0

--monitor=HDMI-A-1,1920x1080@100,0x0,1

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@100",
    position = "0x0",
    scale    = 1,
    transform = 1,
})

--workspace = 1, default:true, monitor:DP-3
