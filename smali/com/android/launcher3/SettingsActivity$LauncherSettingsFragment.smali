.class public Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method private highlightPreference()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 151
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v2, :cond_1

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->selectPreferenceRecursive(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 154
    :cond_1
    if-nez v1, :cond_2

    .line 155
    return-void

    .line 158
    :cond_2
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    :goto_0
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 161
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 164
    :cond_4
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 167
    nop

    .line 168
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_6

    .line 169
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 170
    nop

    .line 171
    goto :goto_2

    .line 168
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 174
    :cond_6
    const/4 v3, -0x1

    :goto_2
    new-instance v0, Lcom/android/launcher3/util/ListViewHighlighter;

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/util/ListViewHighlighter;-><init>(Landroid/widget/ListView;I)V

    .line 175
    iput-boolean v4, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    .line 176
    return-void

    .line 162
    :cond_7
    :goto_3
    return-void

    .line 148
    :cond_8
    :goto_4
    return-void
.end method

.method public static synthetic lambda$ZPeeMXt8knkkS8xr0AY99mJgiqM(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->highlightPreference()V

    return-void
.end method

.method private selectPreferenceRecursive(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 6

    .line 190
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    return-object v1

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 195
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    return-object p1

    .line 197
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->selectPreferenceRecursive(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getOrder()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 200
    return-object p1

    .line 202
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 99
    const p1, 0x7f080013

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 103
    const-string v0, "pref_icon_badging"

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ButtonPreference;

    .line 105
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "pref_add_icon_to_home"

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;-><init>(Lcom/android/launcher3/views/ButtonPreference;Landroid/content/ContentResolver;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    const-string v0, "notification_badging"

    const-string v1, "enabled_notification_listeners"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    :goto_0
    const-string p1, "pref_override_icon_shape"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 119
    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->unregister()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 184
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/-$$Lambda$SettingsActivity$LauncherSettingsFragment$ZPeeMXt8knkkS8xr0AY99mJgiqM;

    invoke-direct {v1, p0}, Lcom/android/launcher3/-$$Lambda$SettingsActivity$LauncherSettingsFragment$ZPeeMXt8knkkS8xr0AY99mJgiqM;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method
