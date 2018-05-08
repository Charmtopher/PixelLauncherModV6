.class public Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged(F)V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 857
    :cond_0
    return-void
.end method
