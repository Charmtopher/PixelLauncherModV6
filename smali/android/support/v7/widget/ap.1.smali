.class Landroid/support/v7/widget/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final qg:Ljava/util/ArrayList;

.field qh:I

.field qi:J

.field qj:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->qg:Ljava/util/ArrayList;

    .line 5349
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/ap;->qh:I

    .line 5350
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ap;->qi:J

    .line 5351
    iput-wide v0, p0, Landroid/support/v7/widget/ap;->qj:J

    return-void
.end method
