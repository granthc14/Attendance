#!/usr/bin/ruby

require './Classes/Brother'
require './Classes/get_brothers_from_CSV'
require_relative 'process_file'
#Get Brothers
#Go through Text Files and grab attendance 
#Assign Absences to them 
#Go through Brothers
#Make Text file to display who has absences 
class TakeAttendance

  def get_brother_list
    puts 'Getting Brothers...'
    @brother_list = get_brothers
  end

  def get_brother_attendance
    puts 'Getting Attendance...'
    sept_26 = ProcessFile.new('./Records/9_26_16.txt', @brother_list)
    bid_aceptance = ProcessFile.new('./Records/Bid Acceptance.txt', @brother_list)
    aug_29 = ProcessFile.new('./Records/Brothers 8_29_16.txt', @brother_list)
    sept_19 = ProcessFile.new('./Records/Brothers 9_19.txt', @brother_list)
    sept_12 = ProcessFile.new('./Records/Chapter_9_12.txt', @brother_list)
  end

  def assign_absences
    puts 'Assigning Absences...'


  end

  def get_brother_absences
    puts 'Getting Brother Absences...'


  end

  def create_absence_file
    puts 'Creating Absence File...'


  end
end


#
#	MAIN SCRIPT FOR TAKING ATTENDANCE
#	MIGHT BE EXTRACTED LATER 
#
attendance = TakeAttendance.new
bro = Brother.new('b', 'b', 'b', 'b')
bro.say_hello

attendance.get_brother_list
attendance.get_brother_attendance
attendance.assign_absences
attendance.get_brother_attendance
attendance.create_absence_file