.class public Landroid/support/v4/widget/q;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# static fields
.field private static final ne:[I


# instance fields
.field nf:Z

.field ng:Z

.field nh:Landroid/graphics/Paint;

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1423
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/q;->ne:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1447
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/q;->weight:F

    .line 1448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1468
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/q;->weight:F

    .line 1470
    sget-object v1, Landroid/support/v4/widget/q;->ne:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1471
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/q;->weight:F

    .line 1472
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1473
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1455
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/q;->weight:F

    .line 1456
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1459
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1431
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/q;->weight:F

    .line 1460
    return-void
.end method
