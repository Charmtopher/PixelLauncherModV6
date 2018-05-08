.class final Landroid/support/v4/view/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 140
    check-cast p1, Landroid/support/v4/view/t;

    check-cast p2, Landroid/support/v4/view/t;

    iget p1, p1, Landroid/support/v4/view/t;->position:I

    iget p2, p2, Landroid/support/v4/view/t;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
