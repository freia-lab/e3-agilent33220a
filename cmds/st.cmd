# This should be a test or example startup script

require agilent33220a

epicsEnvSet ("IOCNAME", "ioc29-llrffuncgen")
epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("IOCDIR", "llrfuncgen")

drvAsynIPPortConfigure("PORT1","192.168.10.109:5025",0,0,0)
epicsEnvSet("STREAM_PROTOCOL_PATH","$(agilent33220a_DB)")
dbLoadRecords("agilent33220A.template", "PORT=PORT1,P=LLRF-1:,Q=FUNCGEN-1")
dbLoadRecords("asynRecord.db","P=$(IOCNAME),R=:asynRec,PORT='PORT1',ADDR='0',IMAX='1024',OMAX='256'")
