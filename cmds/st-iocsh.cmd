# This should be a test or example startup script

require agilent33220a

iocshLoad("$(agilent33220a_DIR)agilent33220a.iocsh", "IP=192.168.10.109,P=LLRF-1:,DEV=FUNCGEN-1,ASYN_PORT=PORT2")

epicsEnvSet ("IOCNAME", "ioc29-llrffuncgen")
epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("IOCDIR", "llrfuncgen")

dbLoadRecords("asynRecord.db","P=$(IOCNAME),R=:asynRec,PORT='PORT2',ADDR='0',IMAX='1024',OMAX='256'")
