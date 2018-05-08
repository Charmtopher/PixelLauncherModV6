.class public final synthetic Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/QuickScrubController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/QuickScrubController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;->f$0:Lcom/android/quickstep/QuickScrubController;

    iput p2, p0, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;->f$0:Lcom/android/quickstep/QuickScrubController;

    iget v1, p0, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;->f$1:I

    invoke-static {v0, v1}, Lcom/android/quickstep/QuickScrubController;->lambda$onQuickScrubEnd$0(Lcom/android/quickstep/QuickScrubController;I)V

    return-void
.end method
