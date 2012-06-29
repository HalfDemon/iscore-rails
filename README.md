# Welcome to IScorE-rails
IScorE-rails is a Cyber Denfense Competition scoring system.


[![Build Status](https://secure.travis-ci.org/Mab879/iscore-rails.png?branch=master)](http://travis-ci.org/Mab879/iscore-rails)

This applcation uses the Iowa State and IT-Adventures Cyber
Defense Cyber Defense Competition structure and naming 
conventions. Please feel free to fork the project and
change the names for your type of Cyber Defense Competition.

PLEASE NOTE: ISorE-rails is based off the rules, scoring, etc. from the 2012 IT-Adventures 
competition. Please change this application for YOUR CDC.

POST SCRIPT: Please take note that most of have is descriped below isn't created yet. The point of this
README is to tell you what ISorE-rails is and the the people who work on this project what the should 
be doing and how.

## Team Descriptons ([from the Offical Iowa State Documention](https://www.iac.iastate.edu/wiki/File:ITOCDC12-Rules.pdf))
* Blue Teams - Competitors playing the role of the Information Assurance community.  These
teams must identify and defend against various security threats via the Competition network.

* Red Team - Comprised of professionals from the Information Assurance community playing the
role of hackers.  This team must create and implement various attack strategies against the Blue
Teams, and capture flags from the Blue Team servers.

* White Team - Comprised of respected individuals from the Information Assurance community.
This team is the judging authority for the CDC.

* Green Team - This team consists of members with various computer familiarity and skill levels.
They play the role of typical network users.  The Green Team duties include regular Internet
usage and the execution of predefined anomalies.

## Terms Glossery ([from the Offical Iowa State Documention](https://www.iac.iastate.edu/wiki/File:ITOCDC12-Rules.pdf))
* Flag - a ncrypted file placed in a predefined location.  The Red Team much capture these
flags from or plant them onto teams’ systems.

* Anomalies - These events are injected into the system at various times throughout the
competition.  The Anomalies are designed to test, or simply just complicate, the Blue Team
duties during the competition.  

* CDC Director - Oversees the operation of the CDC, leads the White
Team in scoring and adjudication, and coordinates the Red, Green, and Blue Teams.

## IScorE-rails Terms
* Document - A documention for the White and Green Teams or other purposes.

* Anomalies - A optional chanllages made by the Green Team Leader. This will give Blue Teams additanal points.

* Green Team Usability Reports: These are manully checks by the Green Team to test the Blue Teams'
  Services. These forms will need changed for each year of your CDC.
  The IScorE-rails will use the 2012 IT-Adventures Cyber Defense. The checks
  have check boxs. You check if the service is up and don't if it isn't. It
  is also recommend to add a comment about each outage.

## Flags
* Flags are made by Competion Director. The Read Team will marks theses flags as captured when the discover them.
  The will enter the flag into the text field on the flag page for later verifition. 

* Also if the Red Team is able to capture the flag the Blue Team can send a report back, via a text
  field, to able back points, up to half. These will be judged by the Red and White teams.

## Intrusion Reports
* Intrusion reports are periodic reports that are submitted by the Blue Teams. 

* This report is where the teams will tell what isn't or is happening with there networks and services.

* These are juged by the White Team

* Only one report per reporting period.

## Green Team Usability Reports
* Started by Green Team Leader

* Then Started only Green Team Memebers can see theses scores and edit theme

* The score will be released to Blue Teams after all reports are done and 
  the scores are released by Green Team Leader

## Anomalies
* Created by the Green Team Leader

* Done by the Blue Team 

* Juged by the Green Team Leaders and/ or members

## Documentaion
* Created by Blue Teams

* Used by Green and White Teams

* Juged by Green and White Teams

## Perimisions
* Each User has a Team membership to a team. 

* It will be to one of the following:
  - Blue 
  - Green
  - Red
  - White
  - Admin: Access to all teams

* If the user is one of red, green, blue, or white teams he or she will only be able 
  to access that area of ISorE-rails.

* On the Blue Team Users only see their teams items

* Admins have access to all

* These are defined in `app/models/ability.rb`.

* Autherztion is done by [CanCan](https://github.com/ryanb/cancan/) by [Ryan Bates](https://github.com/ryanb)

## Team Dashbaords
* The can be found at `(ISorE_host)/dashboard/(team_color)`

* Access is restricted by the rules above

## Service checks
* The SCANNER currenly NOT apart of IScorE-rails

* Might make our own later as differnt project

* If you want service scores, update status, etc you will need to intergate / roll your own

* If you roll your own please note the following

* IScorE-rails expects thats you give it the infomation like so

* `(ISorE_host)/api/v1/uptime/add/(site_number)/(service_name_id)/(status)/(auth_token)`

  - `site_number` =  The owner of the service that is being checked. If you where checking Site 1 it would be 1

  - `service_name_id` The id of the service that is being checked. These are stored in the services model. 
  the ids are listed in the admin sectiaon.

  - `status` This is must be 0 or 1. 0 for being down. 1 for being up.

  - `auth_token` The API token

## API
* Some of the functions of IScorE are accessable and/ or use the API to the task they were designed to do.

* To use the API use must be a member of the admin team.

* There is ONE, API key for the whole App.

* If you reset the API token **YOU WILL BREAK EVERYTHING THAT USES IT. YES, REALLY**. 

* If you are using the service scanner and change API token **YOU WILL BREAK IT**

* If you are using an third party service and change the API token **YOU WILL** break things

* The API is versioned currenly we are on version 1 (one) of the api.

* The API can be found at `(IScorE_host)/api/v1/`

## Scoring
* Scoring is the very heart of IScorE
