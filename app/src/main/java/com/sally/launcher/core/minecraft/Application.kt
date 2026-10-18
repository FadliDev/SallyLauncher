package com.sally.launcher.core.minecraft

import android.app.Application
import android.content.Context
import android.content.SharedPreferences
import androidx.preference.PreferenceManager
import com.sally.launcher.core.crash.CrashReporter
import com.sally.launcher.core.news.NewsNotificationHelper
import com.sally.launcher.settings.FeatureSettings
import com.sally.launcher.ui.dialogs.LogcatOverlayManager

class LauncherApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        context = applicationContext
        FeatureSettings.init(applicationContext)
        CrashReporter.init(this)
        val processName = Application.getProcessName()
        if (processName.endsWith(":crash")) return

        NewsNotificationHelper.initialize(this)
        LogcatOverlayManager.init(this)

        preferences = PreferenceManager.getDefaultSharedPreferences(this)
    }

    companion object {
        @JvmStatic
        lateinit var context: Context
            private set

        @JvmStatic
        lateinit var preferences: SharedPreferences
            private set
    }
}
