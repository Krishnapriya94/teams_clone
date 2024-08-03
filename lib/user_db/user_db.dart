import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class UserDb {
  static String email = "";
  static String password = "";
  static String userName = "Reenu";
  static String userImage =
      "https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";

  static List<Map> moreScreen = [
    {
      "color": ColorConstants.teams_blue,
      "customIcon":
          Icon(Icons.add, color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Add app"
    },
    {
      "color": ColorConstants.teams_blue,
      "customIcon": Icon(Icons.file_copy_rounded,
          color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Files"
    },
    {
      "color": ColorConstants.teams_blue,
      "customIcon": Icon(Icons.access_time_filled,
          color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Shifts"
    },
    {
      "color": ColorConstants.teams_blue,
      "customIcon": Icon(Icons.refresh_outlined,
          color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Approvals"
    },
    {
      "color": ColorConstants.teams_blue,
      "customIcon": Icon(Icons.cast_connected,
          color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Cast"
    },
    {
      "color": ColorConstants.teams_blue,
      "customIcon": Icon(Icons.camera_alt_rounded,
          color: ColorConstants.customeWhite, size: 30),
      "iconLabel": "Camera"
    },
  ];

  static List<Map> recentCallItems = [
    {
      "nameCode": "NK",
      "userName": "Nita Kishan",
      "time": "7 min 42 sec",
      "col": ColorConstants.customeBlue.shade100,
      "nameCodeColor": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(
        Icons.call_made_rounded,
        size: 20,
        color: ColorConstants.customeGrey,
      ),
    },
    {
      "nameCode": "JD",
      "userName": "John Doe",
      "time": "5 min 20 sec",
      "col": ColorConstants.customeGreen.shade100,
      "nameCodeColor": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: Colors.green,
      ),
      "callIcon": Icon(Icons.call_received,
          size: 20, color: ColorConstants.customeGrey),
    },
    {
      "nameCode": "AS",
      "userName": "Alice Smith",
      "time": "Missed Call",
      "col": ColorConstants.customePink.shade100,
      "nameCodeColor": ColorConstants.customePink,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(
        Icons.call_missed_outgoing,
        size: 20,
        color: ColorConstants.customeRed,
      ),
    },
    {
      "nameCode": "EC",
      "userName": "Emily Carter",
      "time": "3 min 50 sec",
      "col": ColorConstants.customeAmber.shade100,
      "nameCodeColor": ColorConstants.customeAmber,
      "statusIcon": Icon(
        Icons.circle,
        size: 20,
        color: Colors.red,
      ),
      "callIcon": Icon(Icons.call_received_outlined,
          size: 20, color: ColorConstants.customeGrey),
    },
    {
      "nameCode": "MS",
      "userName": "Michael Scott",
      "time": "15 min 30 sec",
      "col": ColorConstants.customeGreen.shade100,
      "nameCodeColor": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon":
          Icon(Icons.call_missed, size: 20, color: ColorConstants.customeRed),
    },
    {
      "nameCode": "LS",
      "userName": "Linda Sanders",
      "time": "8 min 5 sec",
      "col": ColorConstants.customeBlue.shade100,
      "nameCodeColor": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(Icons.call_received_outlined,
          size: 20, color: ColorConstants.customeGrey),
    },
    {
      "nameCode": "RB",
      "userName": "Robert Brown",
      "time": "6 min 12 sec",
      "col": ColorConstants.customeGreen.shade100,
      "nameCodeColor": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(
        Icons.call_received_rounded,
        size: 20,
        color: ColorConstants.customeGrey,
      ),
    },
    {
      "nameCode": "TG",
      "userName": "Tom Green",
      "time": "4 min 58 sec",
      "col": ColorConstants.customePink.shade100,
      "nameCodeColor": ColorConstants.customePink,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: Colors.lightGreen,
      ),
      "callIcon":
          Icon(Icons.call_made, size: 20, color: ColorConstants.customeGrey),
    },
    {
      "nameCode": "KH",
      "userName": "Karen Hill",
      "time": "Missed Call",
      "col": ColorConstants.customeAmber.shade100,
      "nameCodeColor": ColorConstants.customeAmber,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(
        Icons.call_missed_rounded,
        size: 20,
        color: ColorConstants.customeRed,
      ),
    },
    {
      "nameCode": "JW",
      "userName": "Jane Watson",
      "time": "9 min 18 sec",
      "col": ColorConstants.customeGreen.shade100,
      "nameCodeColor": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
      "callIcon": Icon(
        Icons.call_received_outlined,
        size: 20,
        color: ColorConstants.customeGrey,
      ),
    },
  ];

  static List<Map> teamsScreenItems = [
    {
      "teamCode": "W2",
      "teamName": "WiSTA-2016-2ndYear",
      "groups": "General",
      "color": ColorConstants.customeAmber
    },
    {
      "teamCode": "A1",
      "teamName": "Alpha Team",
      "groups": "General",
      "color": ColorConstants.customeBlue
    },
    {
      "teamCode": "B2",
      "teamName": "Beta Squad",
      "groups": "General",
      "color": ColorConstants.customeBlue
    },
    {
      "teamCode": "G3",
      "teamName": "Gamma Group",
      "groups": "General",
      "color": ColorConstants.customeGreen
    },
    {
      "teamCode": "D4",
      "teamName": "Delta Force",
      "groups": "General",
      "color": ColorConstants.customePink
    },
    {
      "teamCode": "E5",
      "teamName": "Echo Team",
      "groups": "General",
      "color": ColorConstants.customeRed
    },
    {
      "teamCode": "F6",
      "teamName": "Foxtrot Fighters",
      "groups": "General",
      "color": ColorConstants.customeGreen
    },
    {
      "teamCode": "Z10",
      "teamName": "Zulu Team",
      "groups": "General",
      "color": ColorConstants.customeAmber
    },
    {
      "teamCode": "O7",
      "teamName": "Omega Group",
      "groups": "General",
      "color": ColorConstants.customePink
    },
    {
      "teamCode": "T8",
      "teamName": "Tango Troop",
      "groups": "General",
      "color": ColorConstants.customeGrey
    }
  ];

  static List<Map> activityScreen = [
    {
      "title": "Aron Mentioned you",
      "name": "Aron",
      "images":
          "https://images.pexels.com/photos/3778680/pexels-photo-3778680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "message": "Hey can you take a look at this",
      "time": "10:00 pm",
      "submessage": "Chat with Arin"
    },
    {
      "title": "Charlotte +1 replied",
      "name": "Charlotte",
      "images":
          "https://images.pexels.com/photos/3771089/pexels-photo-3771089.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "message": "Want to go out for lunch",
      "time": "7:00 pm",
      "submessage": "NorthWind  Traders> Marketing"
    },
    {
      "title": "Will posted",
      "name": "Sila",
      "images":
          "https://images.pexels.com/photos/785667/pexels-photo-785667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "message": "I have attached the file we discussed",
      "time": "2:00 pm",
      "submessage": "NorthWind  Traders> Marketing"
    },
    {
      "title": "Sarah +2 reacted",
      "name": "Sarah",
      "images":
          "https://images.pexels.com/photos/450214/pexels-photo-450214.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "message": "I prefer the blue one",
      "time": "9:00 am",
      "submessage": "Chat with Manuel"
    },
  ];

  static List<Map> messageList = [
    {
      "nameCode": "KP",
      "name": "Krishna Priya",
      "message": "Shall we have a call now?",
      "time": "6:02 pm",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 31",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "JD",
      "name": "John Doe",
      "message": "Please send me the report by EOD.",
      "time": "3:55 am",
      "lastSeen": "Active",
      "date": "June 30",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: ColorConstants.customeGreen,
      ),
    },
    {
      "nameCode": "AS",
      "name": "Alice Smith",
      "message": "What's the status of the project?",
      "time": "3:55 am",
      "lastSeen": "Busy",
      "date": "June 29",
      "color": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.circle,
        size: 20,
        color: Colors.red,
      ),
    },
    // Add more entries below
    {
      "nameCode": "MS",
      "name": "Michael Scott",
      "message": "Can you reschedule the meeting?",
      "time": "10:15 am",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 25",
      "color": ColorConstants.customeGrey,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "EL",
      "name": "Emma Lee",
      "message": "Let's discuss the budget for Q3.",
      "time": "3:30 pm",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 20",
      "color": ColorConstants.customeRed,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "RG",
      "name": "Robert Green",
      "message": "Could you review the presentation slides?",
      "time": "3:55 am",
      "lastSeen": "Active",
      "date": "June 19",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: ColorConstants.customeGreen,
      ),
    },
    {
      "nameCode": "TS",
      "name": "Tom Sawyer",
      "message": "I'll be out of the office until Friday.",
      "time": "3:55 am",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 19",
      "color": ColorConstants.customePink,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "LS",
      "name": "Lily Smith",
      "message": "Is the server maintenance complete?",
      "time": "3:55 am",
      "lastSeen": "Busy",
      "date": "June 19",
      "color": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.circle,
        size: 20,
        color: ColorConstants.customeRed,
      ),
    },
    {
      "nameCode": "BP",
      "name": "Brian Peterson",
      "message": "Let's finalize the budget allocation.",
      "time": "3:55 am",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 19",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "AW",
      "name": "Anna Watson",
      "message": "Can you send me the meeting agenda?",
      "time": "3:09 pm",
      "lastSeen": "Active",
      "date": "June 19",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: ColorConstants.customeGreen,
      ),
    },
    {
      "nameCode": "MS",
      "name": "Mia Scott",
      "message": "Please confirm the client meeting time.",
      "time": "5:15 pm",
      "lastSeen": "Busy",
      "date": "June 17",
      "color": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.circle,
        size: 20,
        color: ColorConstants.customeRed,
      ),
    },
    {
      "nameCode": "JW",
      "name": "Jason White",
      "message": "Let's discuss the new project timeline.",
      "time": "8:03 am",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 15",
      "color": ColorConstants.customeRed,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "MS",
      "name": "Matthew Stewart",
      "message": "Could you review the marketing campaign draft?",
      "time": "10:55 am",
      "lastSeen": "Last seen 4:45 pm",
      "date": "June 10",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.access_time_filled_outlined,
        size: 20,
        color: ColorConstants.customeAmber,
      ),
    },
    {
      "nameCode": "AH",
      "name": "Alex Hernandez",
      "message": "When will the new product be launched?",
      "time": "9:05 am",
      "lastSeen": "Active",
      "date": "June 10",
      "color": ColorConstants.customeBlue,
      "statusIcon": Icon(
        Icons.check_circle,
        size: 20,
        color: ColorConstants.customeGreen,
      ),
    },
    {
      "nameCode": "LS",
      "name": "Lucas Silva",
      "message": "Please send me the updated financial report.",
      "time": "3:55 am",
      "lastSeen": "Busy",
      "date": "June 9",
      "color": ColorConstants.customeGreen,
      "statusIcon": Icon(
        Icons.circle,
        size: 20,
        color: ColorConstants.customeRed,
      ),
    },
  ];

  // personal chat screen
}
