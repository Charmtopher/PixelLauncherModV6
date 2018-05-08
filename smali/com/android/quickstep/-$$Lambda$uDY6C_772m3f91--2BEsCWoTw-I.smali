.class public final synthetic Lcom/android/quickstep/-$$Lambda$uDY6C_772m3f91--2BEsCWoTw-I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/system/InputConsumerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$uDY6C_772m3f91--2BEsCWoTw-I;->f$0:Lcom/android/systemui/shared/system/InputConsumerController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$uDY6C_772m3f91--2BEsCWoTw-I;->f$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    return-void
.end method
