# SPMBug
Bug link: [https://bugs.swift.org/browse/SR-15154](https://bugs.swift.org/browse/SR-15154)

If you use SPM to for a Swift package which is consumed in one target, which you then expose to another target, there will be build errors. This project is the smallest possible demonstration we've found.


We create an ObjC App that uses our SPM package "RevenueCat".
In our app, we create an object that uses an object from the "RevenueCat" package as part of its api.

We expose this object's header (which exposes the method containing the RevenueCat object as a parameter) as a public header.

We create a Swift test target that depends on the ObjC App and has a bridging header for that object we created.

We attempt to use the API in a test. API that doesn't include RevenueCat objects is fine, but any API that uses RevenueCat objects in the parameter is not found.

 

Environment:
Xcode 12.5.1 (Build version 12E507) & Xcode 13 Beta 5

M1 Mac as well as Intel mac.

Swift Package Manager - Swift 5.4.0

Swift Package Manager - Swift 5.5.0

Component: Package Manager

