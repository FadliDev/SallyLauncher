package com.sally.launcher.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.widget.Button;
import android.widget.ProgressBar;

import com.sally.launcher.R;
import com.sally.launcher.core.minecraft.MinecraftImportIntents;
import com.sally.launcher.core.minecraft.MinecraftLauncher;
import com.sally.launcher.core.versions.GameVersion;
import com.sally.launcher.core.versions.VersionManager;
import com.sally.launcher.ui.dialogs.CustomAlertDialog;

import java.util.concurrent.ExecutorService;

public class ResourcepackHandler {

    private final Activity activity;
    private final MinecraftLauncher minecraftLauncher;
    private final ExecutorService executor;

    public ResourcepackHandler(Activity activity, MinecraftLauncher minecraftLauncher,
                               ExecutorService executor) {
        this.activity = activity;
        this.minecraftLauncher = minecraftLauncher;
        this.executor = executor;
    }

    public void checkIntentForResourcepack() {
        Intent intent = activity.getIntent();
        if (!MinecraftImportIntents.isMinecraftResourceIntent(activity, intent)) {
            return;
        }
        if (MinecraftImportIntents.forwardToRunningMinecraft(activity, intent)) {
            return;
        }

        Uri data = intent.getData();
        if (data != null) {
            String displayPath = data.getPath() != null ? data.getPath() : data.toString();
            new CustomAlertDialog(activity)
                    .setTitleText(activity.getString(R.string.content_detected_title))
                    .setMessage(activity.getString(R.string.content_detected_message, displayPath))
                    .setPositiveButton(activity.getString(R.string.launch_now), (d) -> launchMinecraft(intent))
                    .setNegativeButton(activity.getString(R.string.launch_later), null)
                    .show();
        }
    }

    private void launchMinecraft(Intent intent) {
        executor.execute(() -> {
            VersionManager versionManager = VersionManager.get(activity);
            GameVersion currentVersion = versionManager.getSelectedVersion();

            minecraftLauncher.launch(intent, currentVersion);
            activity.runOnUiThread(() -> {
            });
        });
    }
}
