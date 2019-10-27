import 'package:geolocator/geolocator.dart';
class Location{
    double lat;
    double long;
    Future<void> getLocation() async{
        try{
            Position position = await Geolocator()
                .getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
            lat=position.latitude;
            long=position.longitude;

        }
        catch(e){
            print('this is error');
        }
    }
}