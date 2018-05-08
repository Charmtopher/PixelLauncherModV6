.class public final synthetic Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/model/ModelWriter;

.field private final synthetic f$1:Ljava/lang/Iterable;

.field private final synthetic f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$1:Ljava/lang/Iterable;

    iput-object p3, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$1:Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$dBgTNmWSiHJipdaOvZxnLBfkuno;->f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/model/ModelWriter;->lambda$deleteItemsFromDatabase$1(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
