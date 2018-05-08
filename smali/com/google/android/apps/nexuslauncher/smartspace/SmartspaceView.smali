.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/android/apps/nexuslauncher/smartspace/e;
.implements Ljava/lang/Runnable;


# instance fields
.field private FA:Landroid/widget/ImageView;

.field private FB:Landroid/widget/ImageView;

.field private FC:Landroid/widget/TextView;

.field private FD:Landroid/widget/TextView;

.field private FE:Landroid/widget/TextView;

.field private FF:Landroid/widget/TextView;

.field private FG:Landroid/view/ViewGroup;

.field private FH:Landroid/view/ViewGroup;

.field private FI:Landroid/view/ViewGroup;

.field private FJ:Landroid/view/ViewGroup;

.field private FK:Landroid/view/View;

.field private FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

.field private final FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

.field private FN:Z

.field private Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

.field private final Fu:Landroid/view/View$OnClickListener;

.field private final Fv:Landroid/view/View$OnClickListener;

.field private final Fw:Landroid/content/res/ColorStateList;

.field private final Fx:I

.field private Fy:Z

.field private Fz:Landroid/widget/ImageView;

.field public final mHandler:Landroid/os/Handler;

.field private final zK:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fu:Landroid/view/View$OnClickListener;

    .line 72
    new-instance p2, Lcom/google/android/apps/nexuslauncher/smartspace/g;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/g;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fv:Landroid/view/View$OnClickListener;

    .line 99
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    .line 100
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    .line 101
    nop

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01002d

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 101
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fw:Landroid/content/res/ColorStateList;

    .line 103
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eO()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fy:Z

    .line 104
    const p1, 0x7f02000b

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fx:I

    .line 105
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/d;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    return-object p0
.end method

.method private ah(Landroid/view/View;)I
    .locals 1

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 322
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private static synthetic ai(Landroid/view/View;)Z
    .locals 0

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eP()V

    .line 357
    const/4 p0, 0x1

    return p0
.end method

.method private eT()V
    .locals 1

    .line 154
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FD:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fz:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0e006d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FA:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FB:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    .line 160
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FH:Landroid/view/ViewGroup;

    .line 161
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    .line 162
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FE:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FF:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    .line 165
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FK:Landroid/view/View;

    .line 166
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FJ:Landroid/view/ViewGroup;

    .line 167
    return-void
.end method

.method private eV()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fy:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private eW()Ljava/lang/String;
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 299
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 300
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 301
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 302
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 303
    invoke-virtual {v0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->A(Z)Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    aget-object v6, v3, v5

    iget v6, v6, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    if-eqz v6, :cond_0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_1
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$JuQ4lvmh2BEPjJDvBJ5bCK4vCG0(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ai(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V
    .locals 6

    .line 191
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 192
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v0

    .line 193
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FN:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 194
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FN:Z

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FN:Z

    if-eqz v3, :cond_0

    const v3, 0x7f040033

    goto :goto_0

    :cond_0
    const v3, 0x7f040032

    :goto_0
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eT()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eV()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FN:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    .line 202
    iget p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fx:I

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eJ()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eW()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :goto_3
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->z(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fu:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eV()Landroid/view/View$OnLongClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fv:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eV()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FF:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FB:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5
    invoke-virtual {p2, v2, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    :cond_6
    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fz:Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fi:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fw:Landroid/content/res/ColorStateList;

    goto :goto_6

    :cond_7
    move-object v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fz:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fz:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fz:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ah(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FD:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ah(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FJ:Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ah(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FI:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ah(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FD:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->zK:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v3, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->z(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FD:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz p2, :cond_b

    if-nez v0, :cond_b

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_7

    :cond_b
    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FG:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_c
    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fu:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eV()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FK:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FH:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FH:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fv:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FH:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eV()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FE:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FA:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    :cond_d
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FH:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FK:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_e
    :goto_8
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eJ()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 209
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eK()J

    move-result-wide p1

    .line 210
    const-wide/32 v0, 0xee48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 211
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_f

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 212
    :cond_f
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_10
    return-void
.end method

.method protected final aC(I)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->ax(I)V

    .line 374
    return-void
.end method

.method public final eN()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fy:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eU()V

    .line 179
    return-void
.end method

.method public final eU()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eM()V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->invalidate()V

    .line 122
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->aC(I)V

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->ag(Landroid/view/View;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FM:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 145
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eT()V

    .line 151
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 133
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eW()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 335
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FL:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->FC:Landroid/widget/TextView;

    .line 337
    :goto_0
    if-eqz p1, :cond_1

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 340
    iget-object v2, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 342
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 343
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v2

    .line 344
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 346
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 349
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 350
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 352
    new-instance p1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    const v0, 0x7f0c00c5

    const v3, 0x7f02003e

    const/4 v4, -0x1

    sget-object v5, Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceView$JuQ4lvmh2BEPjJDvBJ5bCK4vCG0;->INSTANCE:Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceView$JuQ4lvmh2BEPjJDvBJ5bCK4vCG0;

    invoke-direct {p1, v0, v3, v4, v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    .line 359
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;)V

    .line 360
    const/4 p1, 0x1

    return p1

    .line 362
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->eU()V

    .line 369
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 172
    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 173
    return-void
.end method
