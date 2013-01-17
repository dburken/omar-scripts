#!/usr/bin/perl
#------------------------------------------------------------------------------
# FILE:  omar-workflow-simulator.pl
#
# DESCRIPTION:
# OMAR work flow simulator.  Copies data into ingest buffer for processing.
#
# SOFTWARE HISTORY: 
#   16Jan13     ----  D. Burken
#                     Initial coding
#
#------------------------------------------------------------------------------
# $Id$

#---
# runFlag:  For dry run set to 0, set to 1 and it will execute the copy.
#---
$runFlag = 0;

$date = getDateString();
$log_directory     = "/data3/doconnor/logs";
$logFile    = $log_directory . $date . ".log";
$ingestBuffer = "/data3/doconnor/ingest_buffer1";


print("Date: $date\n");
print("log_directory: $log_directory\n");
print("ingestBuffer:  $ingestBuffer\n");
print("runFlag:  $runFlag\n");
sleep 4;

$f1 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508509_01000SP00332258/5V090205M0001912234B220000400082M_001508509/Volume1/5V090205M0001912234B220000400082M_001508509.ntf";

$f2 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508509_01000SP00332258/5V090205M0001912234B220000100042M_001508509/Volume1/5V090205M0001912234B220000100042M_001508509.ntf";

$f3 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508509_01000SP00332258/5V090205P0001912234B220001500292M_001508509/Volume1/5V090205P0001912234B220001500292M_001508509.ntf";

$f4 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508509_01000SP00332258/5V090205P0001912234B220000100152M_001508509/Volume1/5V090205P0001912234B220000100152M_001508509.ntf";

$f5 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508507_01000SP00332258/5V090205M0001912264B220000100072M_001508507/Volume1/5V090205M0001912264B220000100072M_001508507.ntf";

$f6 = "/data1/test/data/geoeye1/GE1_Hobart_GeoStereo_NITF-NCD/001508507_01000SP00332258/5V090205P0001912264B220000100282M_001508507/Volume1/5V090205P0001912264B220000100282M_001508507.ntf";

$f7 = "/data1/bigtiff/Chicago.tif";

while (1)
{  
   $date = getDateString();
   
   $prefix = "-f1";
   $ext = ".ntf";
   $sourceFile = $f1;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   $prefix = "-f2";
   $ext = ".ntf";
   $sourceFile = $f2;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   $prefix = "-f3";
   $ext = ".ntf";
   $sourceFile = $f3;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   $prefix = "-f4";
   $ext = ".ntf";
   $sourceFile = $f4;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   $prefix = "-f5";
   $ext = ".ntf";
   $sourceFile = $f5;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   # Arbitary sleep:
   sleep 5;

   $prefix = "-f6";
   $ext = ".ntf";
   $sourceFile = $f6;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . $ext;
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   $prefix = "-f7";
   $ext = ".tif";
   $sourceFile = $f7;
   $outputFile = $ingestBuffer . "/" . $date . $prefix . ".tif";
   $command = "cp $sourceFile $outputFile";
   print("Executing command: $command\n");
   if ( $runFlag == 1 )
   {
      ( system($command) == 0 ) || die "system $command failed: $?";
   }

   print("Ctrl-C to quit\n");
   sleep 3;
}

exit 0;

sub getDateString()
{
  $result = `date +%Y%m%d%H%M%S`;
  chomp($result);
  return $result;
}
     
