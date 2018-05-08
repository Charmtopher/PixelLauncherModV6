.class Lcom/google/android/apps/nexuslauncher/qsb/n;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic AR:Lcom/google/android/apps/nexuslauncher/qsb/k;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/os/Handler;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/net/Uri;)V

    .line 134
    return-void
.end method
