.class public Lcom/android/quickstep/TaskSystemShortcut$AppInfo;
.super Lcom/android/quickstep/TaskSystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TaskSystemShortcut;-><init>(Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 101
    return-void
.end method
