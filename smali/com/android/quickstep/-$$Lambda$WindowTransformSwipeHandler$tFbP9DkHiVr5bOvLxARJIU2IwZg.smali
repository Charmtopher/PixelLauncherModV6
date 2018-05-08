.class public final synthetic Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iput p2, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iget v1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$tFbP9DkHiVr5bOvLxARJIU2IwZg;->f$1:F

    invoke-static {v0, v1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->lambda$updateFinalShift$2(Lcom/android/quickstep/WindowTransformSwipeHandler;F)V

    return-void
.end method
