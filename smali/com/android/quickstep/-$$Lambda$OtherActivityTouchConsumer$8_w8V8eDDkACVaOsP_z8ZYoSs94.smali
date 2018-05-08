.class public final synthetic Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

.field private final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic f$2:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OtherActivityTouchConsumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$2:Lcom/android/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/quickstep/-$$Lambda$OtherActivityTouchConsumer$8_w8V8eDDkACVaOsP_z8ZYoSs94;->f$2:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/OtherActivityTouchConsumer;->lambda$startTouchTrackingForWindowAnimation$0(Lcom/android/quickstep/OtherActivityTouchConsumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    return-void
.end method
