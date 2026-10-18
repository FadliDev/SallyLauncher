-keepattributes Signature,InnerClasses,EnclosingMethod,*Annotation*,SourceFile,LineNumberTable

-keepclasseswithmembers,includedescriptorclasses class * {
    native <methods>;
}

-keep,includedescriptorclasses class com.sally.launcher.core.minecraft.MinecraftActivity { *; }
-keep,includedescriptorclasses class com.sally.launcher.util.NativeBridgeHelper { *; }
-keep,includedescriptorclasses class com.sally.launcher.preloader.** { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.mods.Mod { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.mods.ModManager { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.mods.inbuilt.ExternalModBridge { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.mods.inbuilt.ExternalModBridge$* { *; }
-keep,includedescriptorclasses class org.levimc.launcher.core.mods.inbuilt.nativemod.** { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.content.nbt.NbtTag { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.content.nbt.NbtDocument { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.content.nbt.NativeNbt { *; }
-keep,includedescriptorclasses class com.sally.launcher.core.content.leveldb.WorldDatabase { *; }
-keep class com.sally.launcher.R$drawable { *; }
-keep class com.sally.launcher.** implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
}

-keep class com.sally.launcher.settings.FeatureSettings {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.auth.MsftAccountStore$MsftAccount {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.versions.VersionProfileMetadata {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.util.InstanceBackupManager$BackupManifest {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.curseforge.models.** {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.modcatalog.ModCatalog {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.modcatalog.ModCatalog$* {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.news.NewsFeed {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.news.NewsItem {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.news.ChangelogManager$Changelog {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.news.ChangelogManager$Section {
    !static !transient <fields>;
    <init>();
}

-keep class com.sally.launcher.core.news.ChangelogManager$Item {
    !static !transient <fields>;
    <init>();
}

-dontwarn java.awt.**
-dontwarn javafx.**
-dontwarn javax.swing.**
-dontwarn com.sun.net.httpserver.**
-dontwarn java.net.http.**
-dontwarn reactor.**
-dontwarn org.reactivestreams.**
-dontwarn io.netty.**
-dontwarn net.lenni0451.commons.httpclient.executor.HttpClientExecutor
-dontwarn lombok.Generated
