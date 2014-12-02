#include "ofApp.h"
#include "soundview.h"

static dispatch_once_t onceToken;

soundview *picker;
//--------------------------------------------------------------
void ofApp::setup(){	
    ofSetFrameRate(30);
    ofEnableAlphaBlending();
    ofSetCircleResolution(32);
	ofRegisterTouchEvents(this);
	ofxAccelerometer.setup();
	ofxiPhoneAlerts.addListener(this);
    ofBackground(0, 0, 0);
    picker = [[soundview alloc] initWithNibName:@"soundview" bundle:nil];
    /*[ofxiPhoneGetUIWindow() addSubview:picker.view];
    soundview = [[soundviewController alloc] initWithNibName:@”soundUIViewController bundle:nil]; settingView.view.alpha = 0; [ofxiOSGetGLView() addSubview:soundview.view];
    
    [UIView animateWithDuration:.3f animations:^{ soundview.view.alpha = 1; }];*/
    
    ofxAccelerometer.setup();
    ofRegisterTouchEvents(this);
    ofxiPhoneAlerts.addListener(this);
    subViewController = [[UIViewController alloc] init];
    subViewController.title = @"Second View Controller";
    
    ofxiPhoneGetOFWindow()->enableRetina();
    UIWindow * window = ofxiOSGetUIWindow();
    
    UIViewController *firstViewController = (UIViewController*)ofxiOSGetViewController();
    
    firstViewController.title = @"First View Controller";
    
    navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    
    window.rootViewController = navigationController;

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
	//左右のサウンドレベルを取得
    //float levelL = [picker getLevelWithChannel:0];
    //float levelR = [picker getLevelWithChannel:1];
    
    //サウンドレベル半径にして円を描画
    //ofSetColor(0, 63, 255, 127);
    //ofTranslate(ofGetWidth()/3, ofGetHeight()/2);
    //ofEllipse(0, 0, levelL * 400.0, levelL * 400.0);
    //ofTranslate(ofGetWidth()/3, 0);
    //ofEllipse(0, 0, levelR * 400.0, levelR * 400.0);
    
    dispatch_once(&onceToken, ^{
        UIWindow * window = ofxiPhoneGetUIWindow();
        
        soundview * firstViewController = (soundview *)ofxiPhoneGetViewController();
        
        firstViewController.title = @"soundview";
        
        window.rootViewController = subViewController;
        
        navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
        
        window.rootViewController = navigationController;
        
        dispatch_time_t delay = dispatch_time(DISPATCH_TIME_NOW, 0.1f * NSEC_PER_SEC);
        dispatch_after(delay, dispatch_get_main_queue(), ^{
            [[(ofxiOSViewController*)firstViewController glView] startAnimation];
        });
    });
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
