.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"


# instance fields
.field public final xb:Lcom/google/android/apps/nexuslauncher/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/apps/nexuslauncher/c;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/nexuslauncher/c;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherExterns;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    .line 22
    return-void
.end method
