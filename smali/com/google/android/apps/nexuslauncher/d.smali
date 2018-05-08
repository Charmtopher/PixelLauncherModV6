.class Lcom/google/android/apps/nexuslauncher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/LauncherCallbacks;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

.field final synthetic xa:Lcom/google/android/apps/nexuslauncher/c;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/c;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/c;B)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Lcom/google/android/apps/nexuslauncher/c;)V

    return-void
.end method

.method private a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)Z
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 273
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 275
    nop

    .line 276
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;Landroid/content/Context;I)I

    move-result v1

    .line 277
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v3, "background_color_hint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v5, "background_color_hint"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    nop

    .line 283
    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    iget p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->f(II)I

    move-result p1

    invoke-static {p1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(ILandroid/content/Context;)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v2, "background_secondary_color_hint"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v1, "background_secondary_color_hint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    nop

    .line 289
    move v1, v3

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    const v0, 0x7f01002b

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p1

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v2, "is_background_dark"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    .line 291
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v2, "is_background_dark"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v1, "is_background_dark"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    nop

    .line 295
    move v1, v3

    :cond_3
    return v1
.end method

.method private cD()Lcom/google/android/apps/nexuslauncher/f;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wW:Lcom/google/android/apps/nexuslauncher/f;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/f;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/f;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/c;->wW:Lcom/google/android/apps/nexuslauncher/f;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wW:Lcom/google/android/apps/nexuslauncher/f;

    return-object v0
.end method

.method private synthetic cE()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method

.method public static synthetic lambda$BOwjIiwrxhHrxKNuVotiw-cnTZ8(Lcom/google/android/apps/nexuslauncher/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/d;->cE()V

    return-void
.end method


# virtual methods
.method public final bindAllApplications$6ba92955()V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/d;->cD()Lcom/google/android/apps/nexuslauncher/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/e/e;->B(Z)V

    .line 234
    return-void
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SmartspaceController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  weather "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isConnected: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    iget-boolean v1, v1, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "act.isBound: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    iget-boolean v1, v1, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app.isBound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1b

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serviceVersion: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clientVersion: 14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mActivityState: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeD:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aew:Lcom/google/android/libraries/gsa/launcherclient/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 205
    return-void
.end method

.method public final handleBackPressed()Z
    .locals 1

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 191
    return-void
.end method

.method public final onCreate$79e5e33f()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/e;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/google/android/apps/nexuslauncher/e;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->wV:Lcom/google/android/apps/nexuslauncher/e;

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    .line 94
    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/c;->wV:Lcom/google/android/apps/nexuslauncher/e;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/c;->a(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/f;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/g;Lcom/google/android/libraries/gsa/launcherclient/f;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wV:Lcom/google/android/apps/nexuslauncher/e;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/e;->xc:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    .line 97
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    const-string v1, "system_ui_visibility"

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    .line 104
    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/d;->a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)Z

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/d;->cD()Lcom/google/android/apps/nexuslauncher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/f;->register()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/i;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/i;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/c;->wX:Lcom/google/android/apps/nexuslauncher/qsb/i;

    .line 115
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-boolean v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    iget-object v4, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aez:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-boolean v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/i;->il()V

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowManager:Landroid/view/WindowManager;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->window:Landroid/view/Window;

    iput-object v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    :cond_1
    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/a;->ig()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/a;->aem:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/a;->il()V

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/a;->aek:Lcom/google/android/libraries/gsa/launcherclient/a;

    if-ne v0, v2, :cond_2

    sput-object v3, Lcom/google/android/libraries/gsa/launcherclient/a;->aek:Lcom/google/android/libraries/gsa/launcherclient/a;

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wW:Lcom/google/android/apps/nexuslauncher/f;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/f;->unregister()V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 173
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-boolean v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v2, "detachedFromWindow"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->closeContextMenu()V

    .line 197
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 4

    .line 126
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "reattachOverlay"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ik()V

    .line 127
    return-void
.end method

.method public onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 1

    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/d;->a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/-$$Lambda$d$BOwjIiwrxhHrxKNuVotiw-cnTZ8;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/-$$Lambda$d$BOwjIiwrxhHrxKNuVotiw-cnTZ8;-><init>(Lcom/google/android/apps/nexuslauncher/d;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->runOnOverlayHidden(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public final onHomeIntent()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wX:Lcom/google/android/apps/nexuslauncher/qsb/i;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AH:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wY:Z

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->J(Z)V

    .line 214
    return-void
.end method

.method public final onLauncherProviderChange()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 229
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->ek:Z

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    return-void
.end method

.method public final onQuickstepGestureStarted$1385ff()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->bl(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->ek:Z

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->wY:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->wZ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eU()V

    .line 140
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 257
    const-string v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 258
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/c;->a(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/f;

    move-result-object p1

    iget v0, p1, Lcom/google/android/libraries/gsa/launcherclient/f;->options:I

    iget v1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/google/android/libraries/gsa/launcherclient/f;->options:I

    iput p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    iget-object p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ih()V

    :cond_0
    iget-object p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v0, "setClientOptions "

    iget p2, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 260
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    .line 147
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/c;->ek:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->wY:Z

    .line 156
    :cond_0
    return-void
.end method

.method public final startSearch$4aa4b603(Ljava/lang/String;)Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->containerType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 240
    const v0, 0x7f0e0015

    goto :goto_0

    .line 241
    :cond_0
    const v0, 0x7f0e0014

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->xa:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    if-eqz v1, :cond_1

    .line 244
    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->k(Ljava/lang/String;)V

    .line 245
    const/4 p1, 0x1

    return p1

    .line 247
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
