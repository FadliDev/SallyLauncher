package com.sally.launcher.ui.views;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;

import com.sally.launcher.core.mods.ModManager;

public class MainViewModelFactory implements ViewModelProvider.Factory {
    public MainViewModelFactory(Application application) {
    }

    @NonNull
    @Override
    @SuppressWarnings("unchecked")
    public <T extends ViewModel> T create(@NonNull Class<T> clazz) {
        ModManager modManager = ModManager.getInstance();
        return (T) new MainViewModel(modManager);
    }
}
