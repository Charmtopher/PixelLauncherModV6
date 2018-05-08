.class public final synthetic Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/uioverrides/TaskViewTouchController;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/TaskViewTouchController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$0:Lcom/android/launcher3/uioverrides/TaskViewTouchController;

    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$1:Z

    iput p3, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$0:Lcom/android/launcher3/uioverrides/TaskViewTouchController;

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$1:Z

    iget v2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$TaskViewTouchController$lRDfqKw2NqVZoHwkdXukBoQMYTs;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/uioverrides/TaskViewTouchController;->lambda$onDragEnd$0(Lcom/android/launcher3/uioverrides/TaskViewTouchController;ZI)V

    return-void
.end method
