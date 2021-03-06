function [EruptDuration] = EruptionDuration ()

StartDate = datenum(datestr(EruptionStartDate,'dd-mmm-yy',1900));
StartYear = datenum(datestr(datetime(2004,1,1),'dd-mmm-yy',1900));
StartDateFrac = 2004 + 1/365*(StartDate - StartYear);

EndDate = datenum(datestr(EruptionEndDate,'dd-mmm-yy',1900));
EndDateFrac = 2004 + 1/365*(EndDate - StartYear);

EruptDuration = EndDateFrac - StartDateFrac;

end