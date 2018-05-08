.class public abstract Landroid/support/v7/widget/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mX:Landroid/graphics/Rect;

.field protected final pR:Landroid/support/v7/widget/af;

.field pS:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/M;->pS:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->mX:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Landroid/support/v7/widget/M;->pR:Landroid/support/v7/widget/af;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/af;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/M;-><init>(Landroid/support/v7/widget/af;)V

    return-void
.end method


# virtual methods
.method public abstract S(Landroid/view/View;)I
.end method

.method public abstract T(Landroid/view/View;)I
.end method

.method public abstract U(Landroid/view/View;)I
.end method

.method public abstract U(I)V
.end method

.method public abstract V(Landroid/view/View;)I
.end method

.method public abstract W(Landroid/view/View;)I
.end method

.method public abstract X(Landroid/view/View;)I
.end method

.method public abstract bA()I
.end method

.method public abstract bB()I
.end method

.method public final bx()I
    .locals 2

    .line 78
    iget v0, p0, Landroid/support/v7/widget/M;->pS:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->bA()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/M;->pS:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract by()I
.end method

.method public abstract bz()I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method
