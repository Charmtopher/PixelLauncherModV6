.class public Lcom/google/android/apps/nexuslauncher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlay;
.implements Lcom/google/android/libraries/gsa/launcherclient/h;


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field xc:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private xd:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

.field public xe:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xe:Z

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 36
    return-void
.end method


# virtual methods
.method public final aw(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_persistent_flags"

    and-int/lit8 p1, p1, 0x18

    .line 80
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xd:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xd:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 55
    :cond_0
    return-void
.end method

.method public final onScrollChange$254d549(F)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xc:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(F)V

    .line 70
    return-void
.end method

.method public final onScrollInteractionBegin()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xc:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ii()V

    .line 60
    return-void
.end method

.method public final onScrollInteractionEnd()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xc:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ij()V

    .line 65
    return-void
.end method

.method public final p(Z)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->xe:Z

    if-eq p1, v0, :cond_2

    .line 45
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/e;->xe:Z

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v1}, Lcom/android/launcher3/Launcher$LauncherOverlay;->setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object p1, v0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 48
    :cond_2
    return-void
.end method

.method public final setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e;->xd:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    .line 75
    return-void
.end method
