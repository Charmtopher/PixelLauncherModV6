.class public final synthetic Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$k_6pk2woWaoaduO9wLHLfmZQvF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/MultiStateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/MultiStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$k_6pk2woWaoaduO9wLHLfmZQvF4;->f$0:Lcom/android/quickstep/MultiStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$k_6pk2woWaoaduO9wLHLfmZQvF4;->f$0:Lcom/android/quickstep/MultiStateCallback;

    invoke-static {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->lambda$launcherFrameDrawn$1(Lcom/android/quickstep/MultiStateCallback;)V

    return-void
.end method
