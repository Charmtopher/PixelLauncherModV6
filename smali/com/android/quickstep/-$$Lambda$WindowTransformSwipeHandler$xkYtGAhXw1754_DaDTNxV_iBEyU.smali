.class public final synthetic Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$xkYtGAhXw1754_DaDTNxV_iBEyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$xkYtGAhXw1754_DaDTNxV_iBEyU;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$xkYtGAhXw1754_DaDTNxV_iBEyU;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/WindowTransformSwipeHandler;->lambda$xkYtGAhXw1754_DaDTNxV_iBEyU(Lcom/android/quickstep/WindowTransformSwipeHandler;Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
