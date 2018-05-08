.class public final synthetic Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$wvt2sKsglkn8HS_eF7-cDtuBhS8;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->reset()V

    return-void
.end method
