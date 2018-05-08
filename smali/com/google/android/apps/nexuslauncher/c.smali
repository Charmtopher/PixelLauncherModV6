.class public Lcom/google/android/apps/nexuslauncher/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ek:Z

.field mStarted:Z

.field final wP:Lcom/android/launcher3/Launcher;

.field private final wQ:Lcom/android/launcher3/LauncherExterns;

.field final wR:Landroid/os/Bundle;

.field final wS:Lcom/android/launcher3/LauncherCallbacks;

.field public wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

.field public wV:Lcom/google/android/apps/nexuslauncher/e;

.field public wW:Lcom/google/android/apps/nexuslauncher/f;

.field public wX:Lcom/google/android/apps/nexuslauncher/qsb/i;

.field wY:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherExterns;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->wR:Landroid/os/Bundle;

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->wP:Lcom/android/launcher3/Launcher;

    .line 77
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/c;->wQ:Lcom/android/launcher3/LauncherExterns;

    .line 78
    new-instance p1, Lcom/google/android/apps/nexuslauncher/d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Lcom/google/android/apps/nexuslauncher/c;B)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->wS:Lcom/android/launcher3/LauncherCallbacks;

    .line 79
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->wQ:Lcom/android/launcher3/LauncherExterns;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/c;->wS:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1, p2}, Lcom/android/launcher3/LauncherExterns;->setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z

    .line 80
    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/f;
    .locals 3

    .line 49
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/f;

    const-string v1, "pref_enable_minus_one"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    or-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x4

    or-int/lit8 p0, p0, 0x8

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/f;-><init>(I)V

    return-object v0
.end method
