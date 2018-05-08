.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/RecentsAnimationWrapper;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationWrapper;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$0:Lcom/android/quickstep/RecentsAnimationWrapper;

    iput-boolean p2, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$1:Z

    iput-object p3, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$0:Lcom/android/quickstep/RecentsAnimationWrapper;

    iget-boolean v1, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$1:Z

    iget-object v2, p0, Lcom/android/quickstep/-$$Lambda$RecentsAnimationWrapper$t0651d-J6Ex6rVOzuxBL-Fg45bs;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationWrapper;->lambda$finish$0(Lcom/android/quickstep/RecentsAnimationWrapper;ZLjava/lang/Runnable;)V

    return-void
.end method
