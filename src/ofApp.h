#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiPhone.h"
#include "ofxiOSExtras.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

class ofApp : public ofxiOSApp {
	
private:
    UIViewController *subViewController;
    UINavigationController *navigationController;
    
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);

};


