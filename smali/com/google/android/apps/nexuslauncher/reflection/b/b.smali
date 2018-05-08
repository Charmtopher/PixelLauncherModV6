.class public Lcom/google/android/apps/nexuslauncher/reflection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Be:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final Cb:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private final Cc:Ljava/util/Map;

.field private final mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 48
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 49
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cb:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cc:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 7

    .line 87
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/i;->Bn:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    if-eqz p1, :cond_1

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    if-nez p1, :cond_0

    .line 98
    return v1

    .line 102
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    return v1

    .line 104
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 106
    :goto_0
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cb:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 109
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 111
    :cond_3
    const-string v4, "@instantapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 114
    :cond_4
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v2, p2, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cc:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 117
    if-nez v3, :cond_6

    .line 118
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v4, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v4, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 123
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 124
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 126
    goto :goto_2

    .line 128
    :cond_5
    goto :goto_1

    .line 131
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cc:Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 139
    :cond_7
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cc:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->Cc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    .line 155
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 156
    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 159
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-virtual {v0}, Lcom/android/launcher3/util/InstantAppResolver;->getInstantApps()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/m;

    .line 65
    iget-object v2, v0, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 71
    :cond_2
    goto :goto_1

    .line 72
    :cond_3
    return-void
.end method

.method public final a([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 164
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
