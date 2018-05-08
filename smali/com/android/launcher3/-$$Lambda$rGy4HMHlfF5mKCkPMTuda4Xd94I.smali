.class public final synthetic Lcom/android/launcher3/-$$Lambda$rGy4HMHlfF5mKCkPMTuda4Xd94I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$rGy4HMHlfF5mKCkPMTuda4Xd94I;->f$0:Lcom/android/launcher3/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$rGy4HMHlfF5mKCkPMTuda4Xd94I;->f$0:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->clearPendingBinds()V

    return-void
.end method
