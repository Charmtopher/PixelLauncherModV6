.class public final synthetic Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

.field private final synthetic f$1:Lcom/android/launcher3/LauncherState;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iput-object p2, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$1:Lcom/android/launcher3/LauncherState;

    iput p3, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object v1, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$1:Lcom/android/launcher3/LauncherState;

    iget v2, p0, Lcom/android/launcher3/touch/-$$Lambda$AbstractStateChangeTouchController$RwEISxsMUlr5U_4sLbHR6ktFaa4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->lambda$onDragEnd$0(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V

    return-void
.end method
