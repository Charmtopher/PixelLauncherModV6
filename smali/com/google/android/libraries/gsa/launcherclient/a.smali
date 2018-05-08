.class public Lcom/google/android/libraries/gsa/launcherclient/a;
.super Lcom/google/android/libraries/gsa/launcherclient/i;
.source "SourceFile"


# static fields
.field public static aek:Lcom/google/android/libraries/gsa/launcherclient/a;


# instance fields
.field ael:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field public aem:Ljava/lang/ref/WeakReference;

.field private aen:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/i;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method static I(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/a;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/a;->aek:Lcom/google/android/libraries/gsa/launcherclient/a;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/a;->aek:Lcom/google/android/libraries/gsa/launcherclient/a;

    .line 18
    :cond_0
    sget-object p0, Lcom/google/android/libraries/gsa/launcherclient/a;->aek:Lcom/google/android/libraries/gsa/launcherclient/a;

    return-object p0
.end method

.method private a(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->ael:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/a;->ig()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->ael:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 84
    :cond_0
    return-void
.end method

.method private if()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->aen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->ael:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/a;->il()V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public final I(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->aen:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/a;->if()V

    .line 44
    return-void
.end method

.method public final ig()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->aem:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->aem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 62
    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/a;->a(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 67
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/a;->a(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/a;->if()V

    .line 69
    return-void
.end method
