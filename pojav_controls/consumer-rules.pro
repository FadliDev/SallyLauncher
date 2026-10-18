-keep class com.sally.pojavcontrols.CustomControls {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.pojavcontrols.ControlData {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.pojavcontrols.ControlDrawerData {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.pojavcontrols.ControlJoystickData {
    !static !transient <fields>;
    <init>();
}

-keep enum com.sally.pojavcontrols.ControlDrawerData$Orientation { *; }
