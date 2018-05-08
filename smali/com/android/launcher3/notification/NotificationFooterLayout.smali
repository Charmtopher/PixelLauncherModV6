.class public Lcom/android/launcher3/notification/NotificationFooterLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mBackgroundColor:I

.field mContainer:Lcom/android/launcher3/notification/NotificationItemView;

.field mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mIconRow:Landroid/widget/LinearLayout;

.field public final mNotifications:Ljava/util/List;

.field private mOverflowEllipsis:Landroid/view/View;

.field public final mOverflowNotifications:Ljava/util/List;

.field final mRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationFooterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 79
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mRtl:Z

    .line 81
    const p3, 0x7f0b0097

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    const v0, 0x7f0b008d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 87
    const v1, 0x7f0b009a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    const v2, 0x7f0b0099

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    const v2, 0x7f0b0072

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 90
    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    mul-int/lit8 p3, p3, 0x5

    sub-int/2addr p2, p3

    .line 92
    iget-object p3, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 p2, p2, 0x5

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 94
    const p2, 0x7f010028

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mBackgroundColor:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/notification/NotificationFooterLayout;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->removeViewFromIconRow(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;
    .locals 3

    .line 143
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mBackgroundColor:I

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 148
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 100
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowEllipsis:Landroid/view/View;

    .line 101
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    .line 102
    return-void
.end method

.method final removeViewFromIconRow(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->updateOverflowEllipsisVisibility()V

    .line 201
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mContainer:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mContainer:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationItemView;->removeFooter()V

    .line 207
    :cond_0
    return-void
.end method

.method public final updateOverflowEllipsisVisibility()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowEllipsis:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void
.end method
