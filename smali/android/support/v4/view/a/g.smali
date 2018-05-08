.class public Landroid/support/v4/view/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final lu:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    iput-object p1, p0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 761
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 762
    return v0

    .line 764
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 765
    return v1

    .line 767
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 768
    return v1

    .line 770
    :cond_2
    check-cast p1, Landroid/support/v4/view/a/g;

    .line 771
    iget-object v2, p0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v2, :cond_3

    .line 772
    iget-object p1, p1, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz p1, :cond_4

    .line 773
    return v1

    .line 775
    :cond_3
    iget-object v2, p0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    iget-object p1, p1, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 776
    return v1

    .line 778
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 752
    iget-object v0, p0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
