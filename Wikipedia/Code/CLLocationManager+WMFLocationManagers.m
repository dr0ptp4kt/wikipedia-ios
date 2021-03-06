#import "CLLocationManager+WMFLocationManagers.h"

@implementation CLLocationManager (WMFLocationManagers)

+ (instancetype)wmf_coarseLocationManager {
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
    locationManager.activityType = CLActivityTypeFitness;
    locationManager.distanceFilter = 10;
    return locationManager;
}

+ (instancetype)wmf_fineLocationManager {
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.activityType = CLActivityTypeFitness;
    locationManager.distanceFilter = 1;
    return locationManager;
}

@end
