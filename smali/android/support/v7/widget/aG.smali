.class public Landroid/support/v7/widget/aG;
.super Landroid/support/v7/widget/aj;
.source "SourceFile"


# instance fields
.field rq:Landroid/support/v7/widget/aJ;

.field rr:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2456
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/aj;-><init>(II)V

    .line 2457
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2452
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2453
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2464
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2465
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2460
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2461
    return-void
.end method


# virtual methods
.method public final bQ()I
    .locals 1

    .line 2500
    iget-object v0, p0, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    if-nez v0, :cond_0

    .line 2501
    const/4 v0, -0x1

    return v0

    .line 2503
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aG;->rq:Landroid/support/v7/widget/aJ;

    iget v0, v0, Landroid/support/v7/widget/aJ;->cx:I

    return v0
.end method
