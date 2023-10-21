import 'package:word_time/services/world_time.dart';

List<WorldTime> locations = [
  WorldTime(
    location: 'Cyprus',
    capital: 'Nicosia',
    flag: 'cyprus.png',
    url: 'Asia/Nicosia',
  ),
  WorldTime(
    location: 'Nigeria',
    capital: 'Abuja',
    flag: 'nigeria.png',
    url: 'Africa/Lagos',
  ),
  WorldTime(
    location: 'Uk',
    capital: 'London',
    flag: 'uk.png',
    url: 'Europe/London',
  ),
  WorldTime(
    location: 'Germany',
    capital: 'Berlin',
    flag: 'germany.png',
    url: 'Europe/Berlin',
  ),
  WorldTime(
    location: 'Egypt',
    capital: 'Cairo',
    flag: 'egypt.png',
    url: 'Africa/Cairo',
  ),
  WorldTime(
    location: 'Kenya',
    capital: 'Nairobi',
    flag: 'kenya.png',
    url: 'Africa/Nairobi',
  ),
  WorldTime(
    location: 'Colorado US',
    capital: 'Denver',
    flag: 'usa.png',
    url: 'America/Denver',
  ),
  WorldTime(
    location: 'South Korea',
    capital: 'Seoul',
    flag: 'south_korea.png',
    url: 'Asia/Seoul',
  ),
  WorldTime(
    location: 'Indonesia',
    capital: 'Jakarta',
    flag: 'indonesia.png',
    url: 'Asia/Jakarta',
  ),
  WorldTime(
    location: 'Mexico',
    capital: 'Mexico City',
    flag: 'mexico.png',
    url: 'America/Mexico_City',
  ),
  WorldTime(
    location: 'Algeria',
    capital: 'Algiers',
    flag: 'algeria.png',
    url: 'Africa/Algiers',
  ),
  WorldTime(
    location: "Côte d'Ivoire",
    capital: 'Abidjan',
    flag: "Côte d'Ivoire.png",
    url: "Africa/Abidjan",
  ),
  WorldTime(
    location: 'Guinea-Bissau',
    capital: 'Bissau',
    flag: "Guinea-Bissau.png",
    url: "Africa/Bissau",
  ),
  WorldTime(
    location: 'Morocco',
    capital: 'Casablanca',
    flag: "Morocco.png",
    url: "Africa/Casablanca",
  ),
  WorldTime(
    location: 'Spain',
    capital: 'Ceuta',
    flag: "Spain.png",
    url: "Africa/Ceuta",
  ),
  WorldTime(
    location: 'South Africa',
    capital: 'Johannesburg',
    flag: "South Africa.png",
    url: "Africa/Johannesburg",
  ),
  WorldTime(
    location: 'Argentina',
    capital: 'Buenos Aires',
    flag: "Argentina.png",
    url: "America/Buenos_Aires",
  ),
  WorldTime(
    location: 'Bridgetown',
    capital: 'Barbados',
    flag: "Bridgetown.png",
    url: "America/Barbados",
  ),
  WorldTime(
    location: 'Illinois',
    capital: 'Chicago',
    flag: "Illinois.png",
    url: "America/Chicago",
  ),
  WorldTime(
    location: 'Michigan',
    capital: 'Detroit',
    flag: "Michigan.png",
    url: "America/Detroit",
  ),
  WorldTime(
    location: 'El Salvador',
    capital: 'San Salvador',
    flag: "El_Salvador.png",
    url: "America/El_Salvador",
  ),
  WorldTime(
    location: 'Jamaica',
    capital: 'Kingston',
    flag: "Jamaica.png",
    url: "America/Jamaica",
  ),
  WorldTime(
    location: 'California',
    capital: 'Los Angeles',
    flag: "California.png",
    url: "America/Los_Angeles",
  ),
  WorldTime(
    location: 'United States',
    capital: 'New York',
    flag: "New_York.png",
    url: "America/New_York",
  ),
  WorldTime(
    location: 'Puerto Rico',
    capital: 'San Juan',
    flag: "Puerto_Rico.png",
    url: "America/Puerto_Rico",
  ),
  WorldTime(
    location: 'Chile',
    capital: 'Santiago',
    flag: "Chile.png",
    url: "America/Santiago",
  ),
  WorldTime(
    location: 'Canada',
    capital: 'Toronto',
    flag: "Canada.png",
    url: "America/Toronto",
  ),
  WorldTime(
    location: 'Thailand',
    capital: 'Bangkok',
    flag: "Thailand.png",
    url: "Asia/Bangkok",
  ),
  WorldTime(
    location: 'Syria',
    capital: 'Damascus',
    flag: "Damascus.png",
    url: "Asia/Damascus",
  ),
  WorldTime(
    location: 'United Arab Emirates',
    capital: 'Dubai',
    flag: "Dubai.png",
    url: "Asia/Dubai",
  ),
  WorldTime(
    location: 'Palestine',
    capital: 'Hebron',
    flag: "Palestine.png",
    url: "Asia/Hebron",
  ),
  WorldTime(
    location: 'China',
    capital: 'Hong Kong',
    flag: "China.png",
    url: "Asia/Hong_Kong",
  ),
  WorldTime(
    location: 'Israel',
    capital: 'Jerusalem',
    flag: "Israel.png",
    url: "Asia/Jerusalem",
  ),
  WorldTime(
    location: 'Qatar',
    capital: 'Doha',
    flag: "Qatar.png",
    url: "Asia/Qatar",
  ),
  WorldTime(
    location: 'Republic of Singapore',
    capital: 'Singapore',
    flag: "Singapore.png",
    url: "Asia/Singapore",
  ),
  WorldTime(
    location: 'Japan',
    capital: 'Tokyo',
    flag: "Japan.png",
    url: "Asia/Tokyo",
  ),
  WorldTime(
    location: 'Greece',
    capital: 'Athens',
    flag: "Greece.png",
    url: "Europe/Athens",
  ),
  WorldTime(
    location: 'Ireland',
    capital: 'Dublin',
    flag: "Ireland.png",
    url: "Europe/Dublin",
  ),
  WorldTime(
    location: 'Turkey',
    capital: 'Istanbul',
    flag: "Turkey.png",
    url: "Europe/Istanbul",
  ),
  WorldTime(
    location: 'Spain',
    capital: 'Madrid',
    flag: "Spain.png",
    url: "Europe/Madrid",
  ),
  WorldTime(
    location: 'Malta',
    capital: 'Valletta ',
    flag: "Malta.png",
    url: "Europe/Malta",
  ),
  WorldTime(
    location: 'France',
    capital: 'Paris',
    flag: "France.png",
    url: "Europe/Paris",
  ),
  WorldTime(
    location: 'Czech Republic',
    capital: 'Prague',
    flag: "Czech Republic.png",
    url: "Europe/Prague",
  ),
  WorldTime(
    location: 'Italy',
    capital: 'Rome',
    flag: "Italy.png",
    url: "Europe/Rome",
  ),
  WorldTime(
    location: 'Bulgaria',
    capital: 'Sofia',
    flag: "Bulgaria.png",
    url: "Europe/Sofia",
  ),
  WorldTime(
    location: 'Maldives',
    capital: 'Malé',
    flag: "Maldives.png",
    url: "Indian/Maldives",
  ),
  WorldTime(
    location: 'Fiji',
    capital: 'Suva',
    flag: "Fiji.png",
    url: "Pacific/Fiji",
  ),
  WorldTime(
    location: 'Tongatapu',
    capital: 'Nukuʿalofa',
    flag: "Tongatapu.png",
    url: "Pacific/Tongatapu",
  ),
];
