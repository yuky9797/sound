#include "ofApp.h"
#include "soundview.h"


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
    picker = [[soundview alloc] initWithNibName:@"MPPicker" bundle:nil];
    [ofxiPhoneGetUIWindow() addSubview:picker.view];

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
