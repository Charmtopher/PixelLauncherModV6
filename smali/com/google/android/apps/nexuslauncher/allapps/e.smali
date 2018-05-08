.class Lcom/google/android/apps/nexuslauncher/allapps/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic xN:Lcom/google/android/apps/nexuslauncher/allapps/d;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/d;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/e;->xN:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/e;->xN:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/d;)V

    .line 120
    return-void
.end method
