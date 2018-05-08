.class public final synthetic Lcom/android/quickstep/-$$Lambda$acy6R1xKzaFdF7tRPnHofYaRRNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/MotionEventQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/MotionEventQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$acy6R1xKzaFdF7tRPnHofYaRRNY;->f$0:Lcom/android/quickstep/MotionEventQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$acy6R1xKzaFdF7tRPnHofYaRRNY;->f$0:Lcom/android/quickstep/MotionEventQueue;

    invoke-virtual {v0}, Lcom/android/quickstep/MotionEventQueue;->reset()V

    return-void
.end method
