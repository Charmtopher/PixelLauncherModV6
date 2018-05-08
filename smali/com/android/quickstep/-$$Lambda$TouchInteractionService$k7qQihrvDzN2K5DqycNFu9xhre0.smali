.class public final synthetic Lcom/android/quickstep/-$$Lambda$TouchInteractionService$k7qQihrvDzN2K5DqycNFu9xhre0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$k7qQihrvDzN2K5DqycNFu9xhre0;->f$0:Lcom/android/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$k7qQihrvDzN2K5DqycNFu9xhre0;->f$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->lambda$initBackgroundChoreographer$2(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
