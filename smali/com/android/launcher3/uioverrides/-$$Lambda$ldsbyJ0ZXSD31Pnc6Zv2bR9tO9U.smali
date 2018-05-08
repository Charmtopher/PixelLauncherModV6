.class public final synthetic Lcom/android/launcher3/uioverrides/-$$Lambda$ldsbyJ0ZXSD31Pnc6Zv2bR9tO9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/views/LauncherRecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$ldsbyJ0ZXSD31Pnc6Zv2bR9tO9U;->f$0:Lcom/android/quickstep/views/LauncherRecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$ldsbyJ0ZXSD31Pnc6Zv2bR9tO9U;->f$0:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method
